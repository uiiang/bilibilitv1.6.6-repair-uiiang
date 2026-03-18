.class public final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;
.super Lbl/adv;
.source "AuthSpaceVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;


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
    .locals 1

    .prologue
    .line 840
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 851
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 852
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->o:Landroid/widget/TextView;

    .line 853
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->p:Landroid/widget/TextView;

    .line 854
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->q:Landroid/widget/TextView;

    .line 855
    const v0, 0x7f0801aa

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->r:Landroid/widget/TextView;

    .line 856
    const v0, 0x7f0801a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->duration:Landroid/widget/TextView;

    .line 857
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;

    .line 858
    return-void
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public E()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
