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
    .line 445
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 456
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
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
    .line 445
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 462
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    instance-of v0, p1, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;

    if-eqz v0, :cond_d0

    .line 464
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;

    .line 465
    const-string v1, "mVideoDetails[position]"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 467
    check-cast v1, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;

    .line 468
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->A()Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->C()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :try_start_41
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_d1

    move-result v2

    .line 475
    :goto_49
    if-lez v2, :cond_d5

    .line 476
    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->access$1000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->access$1000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    :goto_5d
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mCreatedTimestamp:J

    .line 482
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_dd

    .line 483
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    :goto_77
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mDuration:J

    long-to-int v2, v4

    .line 489
    const/16 v4, 0xe10

    if-lt v2, v4, :cond_e5

    .line 490
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->E()Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    div-int/lit16 v7, v2, 0xe10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    rem-int/lit16 v3, v2, 0xe10

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_a8
    iget-object v2, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mCover:Ljava/lang/String;

    if-eqz v2, :cond_c1

    .line 495
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    iget-object v4, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v3, v4}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 497
    :cond_c1
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 498
    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 500
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    :cond_d0
    return-void

    .line 474
    :catch_d1
    move-exception v2

    move v2, v3

    goto/16 :goto_49

    .line 479
    :cond_d5
    # getter for: Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->access$1000(Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5d

    .line 486
    :cond_dd
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_77

    .line 492
    :cond_e5
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$c;->E()Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v9, [Ljava/lang/Object;

    div-int/lit8 v7, v2, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a8
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
    .line 510
    const-string v0, "tagVideoDetails"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 512
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 513
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/tag/VideoTagSearchActivity$b;->d(I)V

    .line 514
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 518
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 521
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 523
    instance-of v2, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;

    if-eqz v2, :cond_1c

    if-nez v1, :cond_1d

    .line 527
    :cond_1c
    :goto_1c
    return-void

    .line 526
    :cond_1d
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    check-cast v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/tag/TagVideoDetail;->mAvid:J

    invoke-virtual {v2, v1, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c
.end method
