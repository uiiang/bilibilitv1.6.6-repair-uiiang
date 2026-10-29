.class public final Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;
.super Lbl/adv;
.source "VideoToviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/VideoToviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/history/VideoToviewActivity$f$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$f$a;


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
    .line 487
    new-instance v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->Companion:Lcom/bilibili/tv/ui/history/VideoToviewActivity$f$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 499
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 501
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->o:Landroid/widget/TextView;

    .line 502
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->p:Landroid/widget/TextView;

    .line 503
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->q:Landroid/widget/TextView;

    .line 504
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->r:Landroid/widget/TextView;

    .line 505
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->duration:Landroid/widget/TextView;

    .line 506
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->danmakuInImage:Landroid/widget/TextView;

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->danmakuInImage:Landroid/widget/TextView;

    const v4, 0x7f060120

    const v5, 0x7f0500a1

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 510
    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/VideoToviewActivity$f;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
