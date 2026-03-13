.class public final Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "HistoryVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final fragment:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->videos:Ljava/util/List;

    .line 398
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->fragment:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    .line 399
    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->fragment:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;
    .locals 3

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 418
    new-instance v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 393
    check-cast p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->a(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;I)V
    .locals 13

    .prologue
    const/16 v12, 0xe10

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 422
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 424
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 425
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v2, v3}, Lbl/ach;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 428
    :cond_2b
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 429
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :cond_3c
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->fragment:Lcom/bilibili/tv/ui/history/HistoryVideoFragment;

    # getter for: Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment;->access$900(Lcom/bilibili/tv/ui/history/HistoryVideoFragment;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mViewAt:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 435
    iget v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mProgress:I

    .line 436
    const/4 v2, -0x1

    if-ne v3, v2, :cond_ae

    .line 437
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u5df2\u770b\u5b8c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :goto_6e
    iget-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mShowTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_150

    .line 461
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 462
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mShowTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    :goto_8d
    iget-object v1, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 470
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 471
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d$1;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 484
    return-void

    .line 441
    :cond_ae
    if-lt v1, v12, :cond_115

    .line 442
    const-string v2, "%d:%02d:%02d"

    new-array v4, v11, [Ljava/lang/Object;

    div-int/lit16 v5, v1, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    rem-int/lit16 v5, v1, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 446
    :goto_d3
    if-lez v3, :cond_148

    .line 448
    if-lt v3, v12, :cond_12f

    .line 449
    const-string v1, "%d:%02d:%02d"

    new-array v4, v11, [Ljava/lang/Object;

    div-int/lit16 v5, v3, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 453
    :goto_f9
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%s/%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    aput-object v2, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :goto_10c
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6e

    .line 444
    :cond_115
    const-string v2, "%02d:%02d"

    new-array v4, v9, [Ljava/lang/Object;

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_d3

    .line 451
    :cond_12f
    const-string v1, "%02d:%02d"

    new-array v4, v9, [Ljava/lang/Object;

    div-int/lit8 v5, v3, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f9

    .line 455
    :cond_148
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10c

    .line 465
    :cond_150
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 466
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8d
.end method

.method public addVideos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 410
    :cond_8
    :goto_8
    return-void

    .line 409
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 489
    instance-of v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_33

    .line 490
    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_33

    .line 493
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_33

    .line 495
    const-string v2, "tv_history_click"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "row"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 496
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v2, v1, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 500
    :cond_33
    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    if-eqz p1, :cond_5

    :goto_2
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$d;->videos:Ljava/util/List;

    .line 403
    return-void

    .line 402
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method
