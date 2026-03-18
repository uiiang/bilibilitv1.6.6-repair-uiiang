.class public final Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;
.super Lbl/adv;
.source "WeeklyVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;


# instance fields
.field private danmakuInImage:Landroid/widget/TextView;

.field private duration:Landroid/widget/TextView;

.field private n:Lcom/bilibili/tv/widget/ScalableImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/bilibili/tv/widget/DrawRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 368
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 369
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 371
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->o:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->p:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->q:Landroid/widget/TextView;

    .line 374
    const v0, 0x7f0801aa

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->r:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f0801a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->duration:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f080074

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 378
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 380
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 381
    const v3, 0x7f060120

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 382
    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 384
    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    const v3, 0x7f0500a1

    invoke-static {v3}, Lbl/adl;->d(I)I

    move-result v3

    .line 386
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 387
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 388
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 389
    iget-object v3, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 392
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 393
    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public final F()Lcom/bilibili/tv/widget/DrawRelativeLayout;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 426
    if-eqz v0, :cond_7

    .line 427
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 429
    :cond_7
    return-void
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
