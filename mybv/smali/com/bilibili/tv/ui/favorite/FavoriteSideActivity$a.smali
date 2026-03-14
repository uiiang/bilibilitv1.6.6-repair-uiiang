.class public Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;
.super Lbl/adz;
.source "FavoriteSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;
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
            "Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Z

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/FavoriteFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;",
            "Ljava/util/List",
            "<",
            "Lbl/FavoriteFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 469
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 470
    iput-object p2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    .line 471
    return-void
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;I)I
    .locals 0

    .prologue
    .line 456
    iput p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    return p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->e:Z

    return v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;)J
    .locals 2

    .prologue
    .line 456
    iget-wide v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;J)J
    .locals 1

    .prologue
    .line 456
    iput-wide p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d:J

    return-wide p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 475
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 5

    .prologue
    .line 480
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_3f

    .line 481
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/FavoriteFolder;

    move-object v1, p1

    .line 483
    check-cast v1, Lbl/agf;

    .line 484
    invoke-interface {v0}, Lbl/FavoriteFolder;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 485
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-interface {v0}, Lbl/FavoriteFolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :cond_1e
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 490
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const v3, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 491
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 493
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v3, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;Lbl/FavoriteFolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 541
    :cond_3f
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->e:Z

    .line 550
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    .line 559
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 605
    :cond_11
    :goto_11
    return-void

    .line 561
    :cond_12
    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 565
    :try_start_20
    iget-boolean v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->e:Z

    if-nez v2, :cond_11

    .line 569
    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$1200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    .line 570
    const/4 v3, 0x0

    .line 571
    if-eqz v5, :cond_80

    move v4, v1

    .line 572
    :goto_2c
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_80

    .line 573
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 574
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    if-ne v6, v7, :cond_74

    .line 583
    :goto_3e
    if-eqz v2, :cond_4a

    .line 584
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_78

    .line 585
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    .line 590
    :cond_4a
    :goto_4a
    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 594
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 595
    instance-of v2, v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v2, :cond_64

    .line 596
    check-cast v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    .line 597
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isLoading()Z

    move-result v1

    if-nez v1, :cond_11

    .line 602
    :cond_64
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->folders:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbl/FavoriteFolder;

    # invokes: Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->access$1100(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Lbl/FavoriteFolder;)V

    goto :goto_11

    .line 603
    :catch_72
    move-exception v0

    goto :goto_11

    .line 572
    :cond_74
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2c

    .line 587
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
