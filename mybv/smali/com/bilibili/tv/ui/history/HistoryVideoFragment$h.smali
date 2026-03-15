.class public final Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;
.super Lbl/adv;
.source "HistoryVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;


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
    .line 638
    new-instance v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->Companion:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 648
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 650
    const v0, 0x7f080132

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->o:Landroid/widget/TextView;

    .line 651
    const v0, 0x7f0801a2

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->p:Landroid/widget/TextView;

    .line 652
    const v0, 0x7f0801a1

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->q:Landroid/widget/TextView;

    .line 653
    const v0, 0x7f08011c

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->r:Landroid/widget/TextView;

    .line 654
    const v0, 0x7f080074

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    .line 655
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 656
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public final C()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 680
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_e

    .line 682
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->s:Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 684
    :cond_e
    return-void
.end method

.method public final z()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->n:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method
