.class final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;"
        }
    .end annotation
.end field

.field private outer:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1404
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 1405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 1414
    sget-object v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 1404
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 7

    .prologue
    const v6, 0x7f060120

    const v5, 0x7f0500a1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1419
    instance-of v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    if-eqz v0, :cond_ce

    .line 1420
    check-cast p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    .line 1421
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 1422
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1425
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    if-eqz v1, :cond_cf

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->playStr:Ljava/lang/String;

    :goto_31
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    if-eqz v1, :cond_d3

    const-string v1, "0"

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 1428
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$3300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmakuStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$3300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1434
    :goto_5a
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    if-eqz v1, :cond_db

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_db

    .line 1435
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->pubTimeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1441
    :goto_76
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    if-eqz v1, :cond_8b

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 1442
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->durationStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    :cond_8b
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v6, v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setPlay(Landroid/widget/TextView;II)V

    .line 1446
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$3300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v6, v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setDanmaku(Landroid/widget/TextView;II)V

    .line 1447
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeText:Ljava/lang/String;

    iget-object v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->badgeBgColor:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->apply(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1451
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1452
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1453
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1454
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1455
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_ce

    .line 1456
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1459
    :cond_ce
    return-void

    .line 1425
    :cond_cf
    const-string v1, "0"

    goto/16 :goto_31

    .line 1431
    :cond_d3
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->access$3300(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5a

    .line 1438
    :cond_db
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_76
.end method

.method public addVideos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1474
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1475
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d(I)V

    .line 1476
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    return-object v0
.end method

.method public insertVideosAtHead(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1485
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d()V

    .line 1486
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1490
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1491
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 1492
    if-nez v1, :cond_f

    .line 1498
    :cond_e
    :goto_e
    return-void

    .line 1494
    :cond_f
    instance-of v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v2, :cond_e

    .line 1495
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 1496
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v4, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->aid:J

    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 1502
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 1503
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 1506
    :cond_a
    if-eqz p2, :cond_2b

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->outer:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v0, :cond_2b

    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1508
    :goto_1e
    if-eqz v0, :cond_2b

    .line 1509
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 1510
    if-ltz v0, :cond_2b

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->outer:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->onLocateFocusPosition(I)V

    .line 1513
    :cond_2b
    return-void

    .line 1507
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public setOuter(Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;)V
    .locals 0

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->outer:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 1410
    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1468
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1469
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d()V

    .line 1470
    return-void
.end method
