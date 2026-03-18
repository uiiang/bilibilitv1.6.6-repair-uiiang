.class public final Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;
.super Lbl/adz;
.source "VideoTagSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/api/video/tag/TagVideoDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 455
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;

    sget-object v0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->Companion:Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 444
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 12

    .prologue
    const-wide/16 v4, 0x3e8

    const/16 v9, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 461
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;

    if-eqz v0, :cond_d8

    .line 463
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;

    .line 464
    const-string v0, "mVideoDetails[position]"

    invoke-static {v6, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    .line 466
    check-cast v7, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;

    .line 467
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->A()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v6, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6}, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->C()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6}, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :try_start_44
    invoke-virtual {v6}, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_d9

    move-result v0

    .line 474
    :goto_4c
    if-lez v0, :cond_dd

    .line 475
    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->access$1000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->access$1000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :goto_60
    iget-wide v0, v6, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mCreatedTimestamp:J

    .line 481
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e6

    .line 482
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->D()Landroid/widget/TextView;

    move-result-object v9

    mul-long/2addr v0, v4

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 482
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    :goto_7f
    iget-wide v0, v6, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mDuration:J

    long-to-int v0, v0

    .line 490
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_ee

    .line 491
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, v0, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-int/lit16 v4, v0, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :goto_b0
    iget-object v0, v6, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v0, :cond_c9

    .line 496
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v2, v6, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v1, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 498
    :cond_c9
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 499
    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 501
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    :cond_d8
    return-void

    .line 473
    :catch_d9
    move-exception v0

    move v0, v8

    goto/16 :goto_4c

    .line 478
    :cond_dd
    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->access$1000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_60

    .line 487
    :cond_e6
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7f

    .line 493
    :cond_ee
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    new-array v3, v11, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/tv/api/video/tag/TagVideoDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    const-string v0, "tagVideoDetails"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 513
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 514
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->d(I)V

    .line 515
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 519
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 522
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 524
    instance-of v2, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;

    if-eqz v2, :cond_1c

    if-nez v1, :cond_1d

    .line 528
    :cond_1c
    :goto_1c
    return-void

    .line 527
    :cond_1d
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    check-cast v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mAvid:J

    invoke-virtual {v2, v1, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c
.end method
