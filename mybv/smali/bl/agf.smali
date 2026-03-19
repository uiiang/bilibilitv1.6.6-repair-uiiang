.class public Lbl/agf;
.super Lbl/adv;
.source "agf.java"


# instance fields
.field public n:Landroid/widget/TextView;

.field public o:Lcom/bilibili/tv/widget/CircleImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 16
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lbl/agf;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/agf;->n:Landroid/widget/TextView;

    .line 17
    const v0, 0x7f0801ac

    invoke-virtual {p0, p1, v0}, Lbl/agf;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/CircleImageView;

    iput-object v0, p0, Lbl/agf;->o:Lcom/bilibili/tv/widget/CircleImageView;

    .line 18
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lbl/agf;
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 22
    new-instance v1, Lbl/agf;

    invoke-direct {v1, v0}, Lbl/agf;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public A()Lcom/bilibili/tv/widget/CircleImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lbl/agf;->o:Lcom/bilibili/tv/widget/CircleImageView;

    return-object v0
.end method
