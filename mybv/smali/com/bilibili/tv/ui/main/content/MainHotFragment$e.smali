.class final Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$e$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$e$a;


# instance fields
.field private final n:Landroid/widget/TextView;

.field private final o:Lcom/bilibili/tv/widget/ScalableImageView;

.field private final p:Landroid/widget/TextView;

.field private final q:Landroid/widget/TextView;

.field private final r:Landroid/widget/TextView;

.field private final s:Landroid/view/View;

.field private final t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/MainHotFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Landroid/widget/TextView;

.field private final v:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 605
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$e$a;

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
            "Lcom/bilibili/tv/ui/main/content/MainHotFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v1, 0x7f0700e8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 617
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 618
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->t:Ljava/lang/ref/WeakReference;

    .line 619
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->n:Landroid/widget/TextView;

    .line 620
    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->o:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 621
    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->p:Landroid/widget/TextView;

    .line 622
    const v0, 0x7f0800d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->q:Landroid/widget/TextView;

    .line 623
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->r:Landroid/widget/TextView;

    .line 624
    const v0, 0x7f0801a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->u:Landroid/widget/TextView;

    .line 625
    const v0, 0x7f0801aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->v:Landroid/widget/TextView;

    .line 626
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->s:Landroid/view/View;

    .line 627
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_cc

    move-object v0, p1

    .line 628
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 632
    :cond_63
    :goto_63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 634
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 635
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 636
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060120

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 637
    invoke-virtual {v1, v7, v7, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 638
    invoke-virtual {v2, v7, v7, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 639
    invoke-virtual {v3, v7, v7, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 640
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0500a1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 641
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 642
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 643
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 644
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 645
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 646
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 647
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 649
    return-void

    .line 629
    :cond_cc
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_63

    move-object v0, p1

    .line 630
    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    goto :goto_63
.end method


# virtual methods
.method public final A()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->o:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method public final F()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 698
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    sget-object v0, Lbl/abl;->a:Lbl/abl;

    const-string v1, "ott-platform.home.hot.0.click"

    invoke-virtual {v0, v1}, Lbl/abl;->a(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 701
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 704
    if-nez v1, :cond_21

    .line 718
    :cond_20
    :goto_20
    return-void

    .line 707
    :cond_21
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_48

    .line 708
    check-cast v0, Ljava/lang/String;

    .line 709
    const-string v2, "bilibili_yst://video"

    invoke-static {v0, v2, v6}, Lbl/bcl;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "bilibili://video"

    invoke-static {v0, v2, v6}, Lbl/bcl;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 712
    :cond_37
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 714
    :cond_48
    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 715
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 716
    const-string v1, "tv_home_hot_click"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string v4, "video"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "position"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_20
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    .line 723
    if-nez v0, :cond_b

    .line 737
    :goto_a
    return-void

    .line 726
    :cond_b
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 727
    if-eqz v1, :cond_1d

    .line 728
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/main/content/MainHotFragment;->c:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->access$402(Lcom/bilibili/tv/ui/main/content/MainHotFragment;I)I

    .line 730
    :cond_1d
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    .line 731
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->s:Landroid/view/View;

    instance-of v0, v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_33

    .line 732
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->s:Landroid/view/View;

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 736
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_a

    .line 733
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->s:Landroid/view/View;

    instance-of v0, v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2d

    .line 734
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->s:Landroid/view/View;

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    goto :goto_2d
.end method

.method public final z()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$e;->n:Landroid/widget/TextView;

    return-object v0
.end method
