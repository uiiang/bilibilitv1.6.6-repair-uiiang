.class public Lbl/aar;
.super Ljava/lang/Object;
.source "aar.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/bilibili/tv/widget/ScalableImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 18
    if-eqz p1, :cond_30

    .line 19
    const v0, 0x7f08013a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    .line 20
    iget-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 21
    iget-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 23
    :cond_1a
    const v0, 0x7f0801bc

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lbl/aar;->c:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 24
    const v0, 0x7f0801bd

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aar;->d:Landroid/widget/TextView;

    .line 26
    :cond_30
    iput-object p1, p0, Lbl/aar;->a:Landroid/view/ViewGroup;

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 31
    iget-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    :cond_f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lbl/aar;->c:Lcom/bilibili/tv/widget/ScalableImageView;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 64
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v1, p0, Lbl/aar;->c:Lcom/bilibili/tv/widget/ScalableImageView;

    invoke-virtual {v0, p1, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 66
    :cond_f
    iget-object v0, p0, Lbl/aar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    .line 67
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 68
    iget-object v0, p0, Lbl/aar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lbl/aar;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :cond_26
    :goto_26
    return-void

    .line 71
    :cond_27
    iget-object v0, p0, Lbl/aar;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_26
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lbl/aar;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 38
    iget-object v1, p0, Lbl/aar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 40
    :cond_e
    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lbl/aar;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 45
    iget-object v0, p0, Lbl/aar;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 47
    :cond_a
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 51
    iget-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lbl/aar;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :cond_f
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lbl/aar;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 58
    iget-object v0, p0, Lbl/aar;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    :cond_b
    return-void
.end method
