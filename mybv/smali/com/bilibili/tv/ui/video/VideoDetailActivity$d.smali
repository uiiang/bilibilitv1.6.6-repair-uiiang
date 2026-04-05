.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;
.super Ljava/lang/Object;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const v5, 0x7f0801a1

    const v4, 0x7f08016a

    const v3, 0x7f080167

    const v2, 0x7f08014d

    .line 3497
    if-nez p1, :cond_f

    .line 3524
    :cond_e
    :goto_e
    return-void

    .line 3500
    :cond_f
    instance-of v0, p1, Lbl/afz;

    if-eqz v0, :cond_3b

    move-object v0, p1

    .line 3501
    check-cast v0, Lbl/afz;

    invoke-interface {v0, p2}, Lbl/afz;->setUpEnabled(Z)V

    .line 3507
    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3508
    if-eq v1, v3, :cond_25

    if-eq v1, v4, :cond_25

    if-eq v1, v2, :cond_25

    if-ne v1, v5, :cond_e

    .line 3510
    :cond_25
    const/4 v0, 0x0

    .line 3511
    if-ne v1, v3, :cond_53

    .line 3512
    const v0, 0x7f080169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 3520
    :goto_32
    if-eqz v1, :cond_e

    .line 3521
    if-eqz p2, :cond_7a

    const/4 v0, 0x0

    :goto_37
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e

    .line 3502
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-ne v0, v1, :cond_19

    const v0, 0x7f080127

    .line 3503
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_19

    .line 3505
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    goto :goto_19

    .line 3513
    :cond_53
    if-ne v1, v4, :cond_60

    .line 3514
    const v0, 0x7f08016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_32

    .line 3515
    :cond_60
    if-ne v1, v2, :cond_6d

    .line 3516
    const v0, 0x7f08014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_32

    .line 3517
    :cond_6d
    if-ne v1, v5, :cond_7d

    .line 3518
    const v0, 0x7f0801c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_32

    .line 3521
    :cond_7a
    const/16 v0, 0x8

    goto :goto_37

    :cond_7d
    move-object v1, v0

    goto :goto_32
.end method
