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
    .line 4538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const v6, 0x7f0801a1

    const v5, 0x7f080195

    const v4, 0x7f08016a

    const v3, 0x7f080167

    const v2, 0x7f08014d

    .line 4542
    if-nez p1, :cond_12

    .line 4595
    :cond_11
    :goto_11
    return-void

    .line 4545
    :cond_12
    instance-of v0, p1, Lbl/afz;

    if-eqz v0, :cond_5b

    move-object v0, p1

    .line 4546
    check-cast v0, Lbl/afz;

    invoke-interface {v0, p2}, Lbl/afz;->setUpEnabled(Z)V

    .line 4552
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 4553
    if-eq v1, v3, :cond_39

    if-eq v1, v4, :cond_39

    if-eq v1, v2, :cond_39

    const v0, 0x7f080268

    if-eq v1, v0, :cond_39

    const v0, 0x7f080241

    if-eq v1, v0, :cond_39

    if-eq v1, v6, :cond_39

    if-eq v1, v5, :cond_39

    const v0, 0x7f0801dc

    if-ne v1, v0, :cond_11

    .line 4559
    :cond_39
    const/4 v0, 0x0

    .line 4560
    if-ne v1, v3, :cond_73

    .line 4561
    const v0, 0x7f080169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 4577
    :goto_46
    if-eqz v1, :cond_4e

    .line 4578
    if-eqz p2, :cond_d8

    const/4 v0, 0x0

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4580
    :cond_4e
    if-nez p2, :cond_11

    .line 4581
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 4547
    :cond_5b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-ne v0, v1, :cond_1c

    const v0, 0x7f080127

    .line 4548
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_1c

    .line 4550
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setUpEnabled(Z)V

    goto :goto_1c

    .line 4562
    :cond_73
    if-ne v1, v4, :cond_80

    .line 4563
    const v0, 0x7f08016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_46

    .line 4564
    :cond_80
    if-ne v1, v2, :cond_8d

    .line 4565
    const v0, 0x7f08014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_46

    .line 4566
    :cond_8d
    const v2, 0x7f080268

    if-ne v1, v2, :cond_9d

    .line 4567
    const v0, 0x7f08026a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_46

    .line 4568
    :cond_9d
    const v2, 0x7f080241

    if-ne v1, v2, :cond_ad

    .line 4569
    const v0, 0x7f080243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_46

    .line 4570
    :cond_ad
    if-ne v1, v6, :cond_ba

    .line 4571
    const v0, 0x7f0801c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_46

    .line 4572
    :cond_ba
    if-ne v1, v5, :cond_c7

    .line 4573
    const v0, 0x7f080194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_46

    .line 4574
    :cond_c7
    const v2, 0x7f0801dc

    if-ne v1, v2, :cond_dc

    .line 4575
    const v0, 0x7f0801de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto/16 :goto_46

    .line 4578
    :cond_d8
    const/16 v0, 0x8

    goto/16 :goto_4b

    :cond_dc
    move-object v1, v0

    goto/16 :goto_46
.end method
