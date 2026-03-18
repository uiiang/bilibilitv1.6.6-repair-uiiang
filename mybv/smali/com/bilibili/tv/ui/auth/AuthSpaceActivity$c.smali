.class public final Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;
.super Lbl/adz;
.source "AuthSpaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field public filter_num:I

.field final synthetic this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 461
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->filter_num:I

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    .line 462
    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->b:Ljava/lang/String;

    .line 463
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 468
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;

    sget-object v0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 451
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v4, 0x8

    const/4 v8, 0x0

    .line 474
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    instance-of v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;

    if-eqz v0, :cond_e3

    .line 476
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 477
    const-string v0, "mSpaceVideos[position]"

    invoke-static {v6, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    .line 479
    check-cast v7, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;

    .line 480
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->A()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->C()Landroid/widget/TextView;

    move-result-object v0

    iget v1, v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :try_start_3e
    iget-object v0, v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_e4

    move-result v0

    .line 487
    :goto_44
    if-lez v0, :cond_e8

    .line 488
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->access$1100(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->access$1100(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :goto_58
    iget-object v0, v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v0, :cond_f1

    iget-object v0, v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 494
    :goto_62
    cmp-long v2, v0, v2

    if-lez v2, :cond_f4

    .line 495
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->D()Landroid/widget/TextView;

    move-result-object v9

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 495
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    :goto_81
    iget v0, v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 503
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_fc

    .line 504
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->E()Landroid/widget/TextView;

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

    .line 508
    :goto_b1
    iget-object v0, v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v0, :cond_ca

    .line 509
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v2, v6, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-static {v1, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 511
    :cond_ca
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 512
    const-string v0, "holder.itemView"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 514
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 516
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v2, 0x7f0700e8

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 517
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 519
    :cond_e3
    return-void

    .line 486
    :catch_e4
    move-exception v0

    move v0, v8

    goto/16 :goto_44

    .line 491
    :cond_e8
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->access$1100(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_58

    :cond_f1
    move-wide v0, v2

    .line 493
    goto/16 :goto_62

    .line 500
    :cond_f4
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_81

    .line 506
    :cond_fc
    invoke-virtual {v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->E()Landroid/widget/TextView;

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

    goto :goto_b1
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/tv/api/auth/BiliSpaceVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    const-string v0, "biliSpaceVideos"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 529
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 530
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->d(I)V

    .line 531
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 536
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 539
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 541
    instance-of v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v1, :cond_1c

    if-nez v2, :cond_1d

    .line 550
    :cond_1c
    :goto_1c
    return-void

    .line 545
    :cond_1d
    :try_start_1d
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_28} :catch_33

    move-result-wide v0

    .line 549
    :goto_29
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v3, v2, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 546
    :catch_33
    move-exception v0

    .line 547
    const-wide/16 v0, 0x0

    goto :goto_29
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 554
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 555
    return-void
.end method
