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
    .line 462
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->this$0:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;

    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->filter_num:I

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    .line 463
    iput-object p2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->b:Ljava/lang/String;

    .line 464
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 469
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
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
    .line 452
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 475
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    instance-of v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;

    if-eqz v0, :cond_d9

    .line 477
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 478
    const-string v1, "mSpaceVideos[position]"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 480
    check-cast v1, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;

    .line 481
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->A()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->C()Landroid/widget/TextView;

    move-result-object v2

    iget v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v3}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :try_start_3d
    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_da

    move-result v2

    .line 488
    :goto_43
    if-lez v2, :cond_de

    .line 489
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->access$1100(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->access$1100(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    :goto_57
    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v2, :cond_e7

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 495
    :goto_61
    cmp-long v4, v2, v4

    if-lez v4, :cond_ea

    .line 496
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->D()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    :goto_77
    iget v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 502
    const/16 v3, 0xe10

    if-lt v2, v3, :cond_f2

    .line 503
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->E()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit16 v7, v2, 0xe10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    rem-int/lit16 v6, v2, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :goto_a7
    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v2, :cond_c0

    .line 508
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    iget-object v4, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-static {v3, v4}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 510
    :cond_c0
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 511
    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 515
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    const v2, 0x7f0700e8

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 516
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 518
    :cond_d9
    return-void

    .line 487
    :catch_da
    move-exception v2

    move v2, v6

    goto/16 :goto_43

    .line 492
    :cond_de
    # getter for: Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->access$1100(Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_57

    :cond_e7
    move-wide v2, v4

    .line 494
    goto/16 :goto_61

    .line 499
    :cond_ea
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_77

    .line 505
    :cond_f2
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$d;->E()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    div-int/lit8 v7, v2, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a7
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
    .line 526
    const-string v0, "biliSpaceVideos"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 529
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$c;->d(I)V

    .line 530
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 535
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 538
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 540
    instance-of v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v1, :cond_1c

    if-nez v2, :cond_1d

    .line 549
    :cond_1c
    :goto_1c
    return-void

    .line 544
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

    .line 548
    :goto_29
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v3, v2, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 545
    :catch_33
    move-exception v0

    .line 546
    const-wide/16 v0, 0x0

    goto :goto_29
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 553
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 554
    return-void
.end method
