.class public final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;
.super Lbl/adv;
.source "AttentionDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;


# instance fields
.field private badge:Landroid/widget/TextView;

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
    .line 905
    new-instance v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 917
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 918
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 920
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->o:Landroid/widget/TextView;

    .line 921
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->p:Landroid/widget/TextView;

    .line 922
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->q:Landroid/widget/TextView;

    .line 923
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->r:Landroid/widget/TextView;

    .line 924
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->duration:Landroid/widget/TextView;

    .line 925
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->danmakuInImage:Landroid/widget/TextView;

    .line 926
    const v0, 0x7f0801d8

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->badge:Landroid/widget/TextView;

    .line 927
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 928
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 929
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 930
    const v3, 0x7f060120

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 931
    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 932
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 933
    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 934
    const v3, 0x7f0500a1

    invoke-static {v3}, Lbl/adl;->d(I)I

    move-result v3

    .line 935
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 936
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 937
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 938
    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 939
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->danmakuInImage:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 941
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public final F()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method

.method public final G()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->badge:Landroid/widget/TextView;

    return-object v0
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
