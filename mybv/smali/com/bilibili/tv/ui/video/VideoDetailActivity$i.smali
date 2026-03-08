.class final Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
.super Lbl/vn;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 2125
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2281
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2292
    :cond_8
    :goto_8
    return-void

    .line 2284
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;

    .line 2286
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->name:Ljava/lang/String;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Tag;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 2288
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    move-result-object v0

    .line 2289
    if-eqz v0, :cond_8

    .line 2290
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;->a(Ljava/util/HashMap;)V

    goto :goto_8
.end method

.method private final b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2257
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v1, 0x7f08016d

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2258
    if-eqz v0, :cond_44

    .line 2259
    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_5a

    .line 2260
    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit16 v3, v3, 0xe10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 2261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 2260
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2267
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v6

    .line 2268
    if-eqz v6, :cond_59

    .line 2269
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7a

    .line 2270
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2278
    :cond_59
    :goto_59
    return-void

    .line 2263
    :cond_5a
    const-string v1, "%02d:%02d"

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit8 v3, v3, 0x3c

    .line 2264
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 2272
    :cond_7a
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2273
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    mul-long/2addr v0, v4

    .line 2275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2273
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_59
.end method

.method private final c(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2419
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2420
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2421
    if-eqz v0, :cond_1a

    .line 2422
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2424
    :cond_1a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2425
    if-eqz v0, :cond_25

    .line 2426
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2444
    :cond_25
    :goto_25
    return-void

    .line 2431
    :cond_26
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 2432
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    .line 2433
    const-string v1, "response.mRelatedList"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2434
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;->a(Ljava/util/List;)V

    .line 2436
    :cond_3e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2437
    if-eqz v0, :cond_49

    .line 2438
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2440
    :cond_49
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2441
    if-eqz v0, :cond_25

    .line 2442
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_25
.end method

.method private final d(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2447
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2448
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2449
    if-eqz v0, :cond_1b

    .line 2450
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2452
    :cond_1b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2453
    if-eqz v0, :cond_26

    .line 2454
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2527
    :cond_26
    :goto_26
    return-void

    .line 2459
    :cond_27
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_46

    .line 2460
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2461
    if-eqz v0, :cond_3a

    .line 2462
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2464
    :cond_3a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2465
    if-eqz v0, :cond_26

    .line 2466
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_26

    .line 2471
    :cond_46
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2473
    if-eqz v0, :cond_51

    .line 2474
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2476
    :cond_51
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2477
    if-eqz v0, :cond_5c

    .line 2478
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2480
    :cond_5c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2481
    if-eqz v0, :cond_7e

    .line 2482
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const v3, 0x7f0c015c

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 2483
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2482
    invoke-virtual {v1, v3, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2485
    :cond_7e
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    if-eqz v0, :cond_d4

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRelatedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d4

    const/4 v0, 0x6

    move v1, v0

    .line 2488
    :goto_8c
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2489
    if-le v0, v1, :cond_95

    move v0, v1

    .line 2492
    :cond_95
    new-instance v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    .line 2493
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v4

    .line 2494
    if-eqz v4, :cond_a5

    .line 2495
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2497
    :cond_a5
    add-int/lit8 v4, v0, -0x1

    .line 2498
    if-ltz v4, :cond_c7

    .line 2500
    :goto_a9
    add-int/lit8 v0, v1, -0x1

    if-ne v2, v0, :cond_d8

    .line 2501
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l()Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 2502
    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 2503
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2504
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lbl/add;

    move-result-object v1

    .line 2505
    if-eqz v1, :cond_c7

    .line 2506
    invoke-virtual {v1, v0}, Lbl/add;->a(Landroid/view/View;)V

    .line 2523
    :cond_c7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lbl/add;

    move-result-object v0

    .line 2524
    if-eqz v0, :cond_26

    .line 2525
    invoke-virtual {v0}, Lbl/add;->d()V

    goto/16 :goto_26

    .line 2485
    :cond_d4
    const/16 v0, 0xc

    move v1, v0

    goto :goto_8c

    .line 2510
    :cond_d8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;

    move-result-object v5

    .line 2511
    if-eqz v5, :cond_f0

    .line 2512
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2513
    const-string v6, "videoDetail.mPageList[i]"

    invoke-static {v0, v6}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2514
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2516
    :cond_f0
    if-eq v2, v4, :cond_c7

    .line 2519
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 2520
    goto :goto_a9
.end method

.method private final showEpisodes(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 10

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2295
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getUGCseason()V

    .line 2296
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_1d

    .line 2297
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 2298
    if-eqz v0, :cond_13

    .line 2299
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2301
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 2302
    if-eqz v0, :cond_1c

    .line 2303
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2416
    :cond_1c
    :goto_1c
    return-void

    .line 2307
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video_adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    if-eqz v0, :cond_c1

    .line 2308
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 2309
    :goto_29
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 2310
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    .line 2311
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v3, "arc"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2310
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2313
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iput-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 2314
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 2316
    :cond_54
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video_adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;->setData(Ljava/util/List;)V

    .line 2319
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 2320
    const/4 v3, -0x1

    move v1, v2

    .line 2321
    :goto_63
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_145

    .line 2322
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_105

    .line 2327
    :goto_7b
    const-string v0, "VideoDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u81ea\u52a8\u6eda\u52a8\u8c03\u8bd5 - \u5f53\u524d\u89c6\u9891aid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", \u5408\u96c6\u5217\u8868\u5927\u5c0f: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2328
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u627e\u5230\u7684\u4f4d\u7f6e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2327
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    if-ltz v1, :cond_112

    .line 2330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 2331
    if-eqz v0, :cond_10a

    .line 2334
    new-instance v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;ILandroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 2397
    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 2398
    if-eqz v1, :cond_fa

    .line 2399
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    if-eqz v0, :cond_11c

    .line 2401
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_11a

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 2402
    :goto_d5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->season_title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2403
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2410
    :goto_f7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2412
    :cond_fa
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 2413
    if-eqz v0, :cond_1c

    .line 2414
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_1c

    .line 2321
    :cond_105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_63

    .line 2390
    :cond_10a
    const-string v0, "VideoDetailActivity"

    const-string v1, "RecyclerView\u4e3anull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 2393
    :cond_112
    const-string v0, "VideoDetailActivity"

    const-string v1, "\u672a\u627e\u5230\u5339\u914d\u7684\u89c6\u9891\u4f4d\u7f6e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    :cond_11a
    move v0, v2

    .line 2401
    goto :goto_d5

    .line 2406
    :cond_11c
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_143

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 2407
    :goto_126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89c6\u9891\u9009\u96c6("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2408
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f7

    :cond_143
    move v0, v2

    .line 2406
    goto :goto_126

    :cond_145
    move v1, v3

    goto/16 :goto_7b
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2189
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 2190
    if-nez p1, :cond_4b

    .line 2191
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2192
    if-eqz v0, :cond_13

    .line 2193
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 2195
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2196
    if-eqz v0, :cond_21

    .line 2197
    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 2199
    :cond_21
    sget-object v0, Lbl/abi;->a:Lbl/abi;

    const-string v1, "tv_detail_view2_resp"

    sget-object v2, Lbl/abi;->a:Lbl/abi;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2200
    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    invoke-virtual {v4}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parse_error"

    const-string v6, "0"

    .line 2199
    invoke-virtual {v2, v3, v4, v5, v6}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    :goto_4a
    return-void

    .line 2203
    :cond_4b
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;

    move-result-object v1

    .line 2204
    if-eqz v1, :cond_56

    .line 2205
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2207
    :cond_56
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    .line 2208
    if-eqz v1, :cond_61

    .line 2209
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 2211
    :cond_61
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;
    invoke-static {v1, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 2212
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2213
    const/16 v2, 0x7d0

    .line 2214
    :goto_6c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_b8

    .line 2215
    const-string v3, "VideoDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8be6\u60c5\u6570\u636e("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, v0, v2

    .line 2216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2215
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    add-int/2addr v0, v2

    goto :goto_6c

    .line 2218
    :cond_b8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v1, v2}, Lbl/ach;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Ljava/lang/String;)V

    .line 2219
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o()V

    .line 2220
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2221
    if-eqz v0, :cond_db

    .line 2222
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2224
    :cond_db
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d:Lcom/bilibili/tv/widget/DrawTextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;

    move-result-object v0

    .line 2225
    if-eqz v0, :cond_ea

    .line 2226
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2228
    :cond_ea
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2229
    if-eqz v0, :cond_fd

    .line 2230
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2232
    :cond_fd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 2233
    if-eqz v0, :cond_110

    .line 2234
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2236
    :cond_110
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2237
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTags:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->a(Ljava/util/List;)V

    .line 2238
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->d(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2239
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->showEpisodes(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2241
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->c(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2242
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0, v1, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2243
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    invoke-static {v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2246
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_14a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2247
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14a

    .line 2248
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2252
    :cond_14a
    sget-object v0, Lbl/abi;->a:Lbl/abi;

    const-string v1, "tv_detail_view2_resp"

    sget-object v2, Lbl/abi;->a:Lbl/abi;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2253
    invoke-static {v4}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v4

    invoke-virtual {v4}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "success"

    const-string v6, "0"

    .line 2252
    invoke-virtual {v2, v3, v4, v5, v6}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2125
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/16 v3, -0x194

    const/4 v1, 0x0

    .line 2134
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2135
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0, p1, v2}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 2137
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 2138
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2139
    if-eqz v0, :cond_1f

    .line 2140
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    .line 2142
    :cond_1f
    const-string v0, "net_error"

    .line 2143
    instance-of v2, p1, Lcom/bilibili/api/BiliApiException;

    if-eqz v2, :cond_e2

    .line 2144
    check-cast p1, Lcom/bilibili/api/BiliApiException;

    .line 2145
    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v1, -0x193

    if-ne v0, v1, :cond_bd

    .line 2146
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 2147
    const-string v1, "BiliAccount.get(applicationContext)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2148
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_84

    .line 2149
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    const/4 v1, 0x1

    # setter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$1902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z

    .line 2150
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2151
    if-eqz v0, :cond_56

    .line 2152
    const v1, 0x7f0c016f

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    .line 2177
    :cond_56
    :goto_56
    const-string v0, "parse_error"

    .line 2178
    iget v1, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    .line 2182
    :cond_5a
    :goto_5a
    sget-object v2, Lbl/abi;->a:Lbl/abi;

    const-string v3, "tv_detail_view2_resp"

    sget-object v4, Lbl/abi;->a:Lbl/abi;

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J
    invoke-static {v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2183
    invoke-static {v6}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v6

    invoke-virtual {v6}, Lbl/mg;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2182
    invoke-virtual {v4, v5, v6, v0, v1}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lbl/abi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    return-void

    .line 2155
    :cond_84
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 2156
    const-string v1, "BiliAccount.get(applicationContext)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v0}, Lbl/mg;->c()Lcom/bilibili/lib/account/model/AccountInfo;

    move-result-object v0

    .line 2158
    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Lcom/bilibili/lib/account/model/AccountInfo;->isFormalAccount()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 2159
    :cond_9f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2160
    if-eqz v0, :cond_56

    .line 2161
    const v1, 0x7f0c016c

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto :goto_56

    .line 2164
    :cond_ae
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 2165
    if-eqz v0, :cond_56

    .line 2166
    const v1, 0x7f0c016d

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto :goto_56

    .line 2170
    :cond_bd
    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    if-eq v0, v3, :cond_c7

    iget v0, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_56

    :cond_c7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    .line 2171
    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 2172
    iget v1, p1, Lcom/bilibili/api/BiliApiException;->mCode:I

    if-ne v1, v3, :cond_da

    .line 2173
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # invokes: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n2()V
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    goto/16 :goto_56

    .line 2175
    :cond_da
    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto/16 :goto_56

    .line 2179
    :cond_e2
    instance-of v2, p1, Lretrofit2/HttpException;

    if-eqz v2, :cond_5a

    .line 2180
    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    goto/16 :goto_5a
.end method
