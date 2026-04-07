.class final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;
.super Lbl/adv;
.source "MainRecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;


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
            "Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 627
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;

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
            "Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 637
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->r:Ljava/lang/ref/WeakReference;

    .line 638
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->n:Landroid/widget/TextView;

    .line 639
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->o:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 640
    const v0, 0x7f08003f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->p:Lcom/bilibili/tv/widget/ScalableImageView;

    move-object v0, p1

    .line 641
    check-cast v0, Lcom/bilibili/tv/widget/DrawFrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->q:Lcom/bilibili/tv/widget/DrawFrameLayout;

    .line 642
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->q:Lcom/bilibili/tv/widget/DrawFrameLayout;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpDrawable(I)V

    .line 643
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 645
    return-void
.end method


# virtual methods
.method public final A()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->o:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final B()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->p:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 681
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    sget-object v0, Lbl/abl;->a:Lbl/abl;

    const-string v1, "ott-platform.home.recommend.0.click"

    invoke-virtual {v0, v1}, Lbl/abl;->a(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 684
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v6

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 687
    if-nez v6, :cond_23

    .line 717
    :cond_22
    :goto_22
    return-void

    .line 690
    :cond_23
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_89

    .line 691
    check-cast v0, Ljava/lang/String;

    .line 692
    const-string v1, "bilibili_yst://pgc"

    invoke-static {v0, v1, v7}, Lbl/bcl;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    move-wide v4, v0

    .line 693
    :goto_3a
    cmp-long v0, v4, v2

    if-lez v0, :cond_22

    .line 696
    const/4 v2, 0x0

    .line 697
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 698
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 699
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_b5

    if-eqz v0, :cond_b5

    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 700
    # getter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->a:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$200(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;

    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 701
    if-eqz v3, :cond_b5

    move-object v0, v1

    .line 702
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 703
    if-ltz v0, :cond_b5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b5

    .line 704
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 705
    if-eqz v0, :cond_b5

    .line 706
    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    .line 711
    :goto_7c
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 713
    :cond_89
    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 714
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_22

    .line 715
    const-string v1, "tv_home_recommend_click"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v7

    const/4 v3, 0x1

    const-string v4, "bangumi"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "position"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_b3
    move-wide v4, v2

    .line 692
    goto :goto_3a

    :cond_b5
    move-object v0, v2

    goto :goto_7c
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 722
    if-nez v0, :cond_b

    .line 732
    :goto_a
    return-void

    .line 725
    :cond_b
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 726
    if-eqz v1, :cond_1d

    .line 727
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$402(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;I)I

    .line 729
    :cond_1d
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    .line 730
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->q:Lcom/bilibili/tv/widget/DrawFrameLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawFrameLayout;->setUpEnabled(Z)V

    .line 731
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_a
.end method

.method public final z()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->n:Landroid/widget/TextView;

    return-object v0
.end method
