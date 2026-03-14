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
    .line 376
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 377
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 378
    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    .line 379
    return-void
.end method

.method static synthetic access$1002(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;J)J
    .locals 1

    .prologue
    .line 364
    iput-wide p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->d:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;)Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->e:Z

    return v0
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;I)I
    .locals 0

    .prologue
    .line 364
    iput p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 383
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 5

    .prologue
    .line 388
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_3f

    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    move-object v1, p1

    .line 391
    check-cast v1, Lbl/agf;

    .line 392
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 393
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_1e
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 413
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const v3, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 414
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 416
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v3, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 461
    :cond_3f
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->e:Z

    .line 470
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    .line 479
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 520
    :cond_11
    :goto_11
    return-void

    .line 480
    :cond_12
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 483
    :try_start_20
    iget-boolean v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->e:Z

    if-nez v2, :cond_11

    .line 486
    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1200(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    .line 487
    const/4 v3, 0x0

    .line 488
    if-eqz v5, :cond_80

    move v4, v1

    .line 489
    :goto_2c
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_80

    .line 490
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 491
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    if-ne v6, v7, :cond_74

    .line 500
    :goto_3e
    if-eqz v2, :cond_4a

    .line 501
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_78

    .line 502
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    .line 507
    :cond_4a
    :goto_4a
    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 510
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 511
    instance-of v2, v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    if-eqz v2, :cond_64

    .line 512
    check-cast v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    .line 513
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->isLoading()Z

    move-result v1

    if-nez v1, :cond_11

    .line 517
    :cond_64
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1100(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    goto :goto_11

    .line 518
    :catch_72
    move-exception v0

    goto :goto_11

    .line 489
    :cond_74
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2c

    .line 504
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
