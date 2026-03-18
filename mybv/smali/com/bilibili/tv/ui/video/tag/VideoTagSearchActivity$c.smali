.class public final Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;
.super Lbl/adv;
.source "VideoTagSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;


# instance fields
.field private danmakuInImage:Landroid/widget/TextView;

.field private duration:Landroid/widget/TextView;

.field private n:Lcom/bilibili/tv/widget/ScalableImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->Companion:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 545
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 546
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 548
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->o:Landroid/widget/TextView;

    .line 549
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->p:Landroid/widget/TextView;

    .line 550
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->q:Landroid/widget/TextView;

    .line 551
    const v0, 0x7f0801aa

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->r:Landroid/widget/TextView;

    .line 552
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;

    .line 553
    const v0, 0x7f0801a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->duration:Landroid/widget/TextView;

    .line 554
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 555
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 556
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 557
    const v3, 0x7f060120

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 558
    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 559
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 560
    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 561
    const v3, 0x7f0500a1

    invoke-static {v3}, Lbl/adl;->d(I)I

    move-result v3

    .line 562
    if-eqz v0, :cond_90

    .line 563
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 565
    :cond_90
    if-eqz v1, :cond_97

    .line 566
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 568
    :cond_97
    if-eqz v2, :cond_9e

    .line 569
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 571
    :cond_9e
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 572
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 574
    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
