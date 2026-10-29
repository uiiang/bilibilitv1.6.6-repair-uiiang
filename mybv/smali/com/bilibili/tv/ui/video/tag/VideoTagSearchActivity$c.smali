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
    .line 507
    new-instance v0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->Companion:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 519
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 521
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->o:Landroid/widget/TextView;

    .line 522
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->p:Landroid/widget/TextView;

    .line 523
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->q:Landroid/widget/TextView;

    .line 524
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->r:Landroid/widget/TextView;

    .line 525
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;

    .line 526
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->duration:Landroid/widget/TextView;

    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;

    const v4, 0x7f060120

    const v5, 0x7f0500a1

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 529
    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
