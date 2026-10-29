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
    .line 345
    new-instance v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 357
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 359
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->o:Landroid/widget/TextView;

    .line 360
    const v0, 0x7f08013f

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->p:Landroid/widget/TextView;

    .line 361
    const v0, 0x7f0800d4

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->q:Landroid/widget/TextView;

    .line 362
    const v0, 0x7f0801af

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->r:Landroid/widget/TextView;

    .line 363
    const v0, 0x7f0801a6

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->duration:Landroid/widget/TextView;

    .line 364
    const v0, 0x7f08006c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f080074

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->q:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;

    const v4, 0x7f060120

    const v5, 0x7f0500a1

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 368
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 369
    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method public final F()Lcom/bilibili/tv/widget/DrawRelativeLayout;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 402
    if-eqz v0, :cond_7

    .line 403
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 405
    :cond_7
    return-void
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/ui/weekly/WeeklyVideoFragment$d;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
