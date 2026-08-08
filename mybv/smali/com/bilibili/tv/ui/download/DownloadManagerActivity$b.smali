.class public final Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;
.super Lbl/adz;
.source "DownloadManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/DownloadManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/download/DownloadManagerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lbl/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/cj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private g:J


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;Lbl/cj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/download/DownloadManagerActivity;",
            "Lbl/cj",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 464
    const-string v0, "activity"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    const-string v0, "titles"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b:Ljava/lang/ref/WeakReference;

    .line 467
    iput-object p2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->c:Lbl/cj;

    .line 468
    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->d:Z

    return v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;)J
    .locals 2

    .prologue
    .line 451
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->g:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;J)J
    .locals 1

    .prologue
    .line 451
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->g:J

    return-wide p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->c:Lbl/cj;

    .line 574
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lbl/cj;->b()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;
    .locals 3

    .prologue
    .line 481
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 483
    const-string v1, "view"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 451
    check-cast p1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;I)V
    .locals 2

    .prologue
    .line 489
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->z()Landroid/widget/TextView;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_18

    .line 492
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->c:Lbl/cj;

    .line 493
    if-eqz v0, :cond_23

    invoke-virtual {v0, p2}, Lbl/cj;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :goto_15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_18
    iget-object v0, p1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$c;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b$1;-><init>(Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;ILcom/bilibili/tv/ui/download/DownloadManagerActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 569
    return-void

    .line 493
    :cond_23
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->d:Z

    .line 584
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 471
    iput p1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    .line 472
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;

    .line 594
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_17

    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$400(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v2

    if-nez v2, :cond_18

    .line 639
    :cond_17
    :goto_17
    return-void

    .line 597
    :cond_18
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->c:Lbl/cj;

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->c:Lbl/cj;

    invoke-virtual {v3}, Lbl/cj;->b()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 602
    :try_start_26
    iget-boolean v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->d:Z

    if-nez v2, :cond_17

    .line 606
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->a:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$100(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    .line 607
    const/4 v3, 0x0

    .line 608
    if-eqz v5, :cond_84

    move v4, v1

    .line 609
    :goto_32
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_84

    .line 610
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 611
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    if-ne v6, v7, :cond_78

    .line 619
    :goto_44
    if-eqz v2, :cond_50

    .line 620
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_7c

    .line 621
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    .line 626
    :cond_50
    :goto_50
    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 630
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$300(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)I

    move-result v1

    iget v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    if-eq v1, v2, :cond_17

    .line 633
    # getter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->d:Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$400(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;)Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/DownloadPagerAdapter;->c(I)V

    .line 634
    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    # setter for: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->currentFragmentIndex:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$302(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)I

    .line 636
    iget v1, p0, Lcom/bilibili/tv/ui/download/DownloadManagerActivity$b;->a:I

    # invokes: Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->setLeftSelected(I)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/DownloadManagerActivity;->access$000(Lcom/bilibili/tv/ui/download/DownloadManagerActivity;I)V

    goto :goto_17

    .line 637
    :catch_76
    move-exception v0

    goto :goto_17

    .line 609
    :cond_78
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_32

    .line 623
    :cond_7c
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_7f} :catch_76

    move-result-object v3

    if-eqz v3, :cond_50

    const/4 v1, 0x1

    goto :goto_50

    :cond_84
    move-object v2, v3

    goto :goto_44
.end method
