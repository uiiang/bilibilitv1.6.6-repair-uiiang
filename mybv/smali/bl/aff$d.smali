.class public final Lbl/aff$d;
.super Lbl/adv;
.source "aff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/aff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aff$d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/aff$d$a;


# instance fields
.field private n:Lcom/bilibili/tv/widget/ScalableImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lbl/aff$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/aff$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/aff$d;->Companion:Lbl/aff$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 345
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lbl/aff$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 347
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aff$d;->o:Landroid/widget/TextView;

    .line 348
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aff$d;->p:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aff$d;->q:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aff$d;->r:Landroid/widget/TextView;

    .line 351
    const v0, 0x7f080123

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/aff$d;->s:Landroid/widget/ImageView;

    .line 352
    const v0, 0x7f080124

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aff$d;->t:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aff$d;->u:Landroid/widget/TextView;

    .line 354
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lbl/aff$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/aff$d;->v:Landroid/widget/TextView;

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbl/aff$d;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lbl/aff$d;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lbl/aff$d;->r:Landroid/widget/TextView;

    const v4, 0x7f060179

    const v5, 0x7f0500a7

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 358
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lbl/aff$d;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lbl/aff$d;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lbl/aff$d;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lbl/aff$d;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lbl/aff$d;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final F()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lbl/aff$d;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method public final G()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lbl/aff$d;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method public final H()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lbl/aff$d;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lbl/aff$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
