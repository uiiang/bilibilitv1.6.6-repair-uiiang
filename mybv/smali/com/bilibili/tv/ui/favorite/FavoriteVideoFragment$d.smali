.class public final Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;
.super Lbl/adv;
.source "FavoriteVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d$a;


# instance fields
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
    .line 820
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 829
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 830
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 832
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->o:Landroid/widget/TextView;

    .line 833
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->p:Landroid/widget/TextView;

    .line 834
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->q:Landroid/widget/TextView;

    .line 835
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->r:Landroid/widget/TextView;

    .line 836
    const v0, 0x7f080074

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 837
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 838
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 839
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 840
    const v3, 0x7f060179

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 841
    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 842
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 843
    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 844
    const v3, 0x7f0500a7

    invoke-static {v3}, Lbl/adl;->d(I)I

    move-result v3

    .line 845
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 846
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 847
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 848
    iget-object v3, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 849
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 850
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 852
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_a9

    .line 853
    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 855
    :cond_a9
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 856
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 880
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 882
    return-void
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
