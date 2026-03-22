.class final Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;
.super Lbl/adv;
.source "MainHotFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$a$aa;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$a$aa;


# instance fields
.field private final n:Landroid/widget/TextView;

.field private final o:Lcom/bilibili/tv/widget/ScalableImageView;

.field private final p:Lcom/bilibili/tv/widget/ScalableImageView;

.field public final q:Lcom/bilibili/tv/widget/DrawFrameLayout;

.field private final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/MainHotFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 536
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a$aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a$aa;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$a$aa;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/MainHotFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 545
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->r:Ljava/lang/ref/WeakReference;

    .line 546
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->n:Landroid/widget/TextView;

    .line 547
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->o:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 548
    const v0, 0x7f08003f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->p:Lcom/bilibili/tv/widget/ScalableImageView;

    move-object v0, p1

    .line 549
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->q:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 550
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->q:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 551
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 553
    return-void
.end method


# virtual methods
.method public final A()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->o:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final B()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->p:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 586
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    sget-object v0, Lbl/abl;->a:Lbl/abl;

    const-string v1, "ott-platform.home.hot.0.click"

    invoke-virtual {v0, v1}, Lbl/abl;->a(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    .line 593
    if-nez v0, :cond_b

    .line 601
    :goto_a
    return-void

    .line 596
    :cond_b
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 597
    if-eqz v1, :cond_1d

    .line 598
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->c:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$402(Lcom/bilibili/tv/ui/main/content/MainHotFragment;I)I

    .line 600
    :cond_1d
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    goto :goto_a
.end method

.method public final z()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$a;->n:Landroid/widget/TextView;

    return-object v0
.end method
