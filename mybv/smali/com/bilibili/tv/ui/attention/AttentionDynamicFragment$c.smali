.class final Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "AttentionDynamicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private uperName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    .line 418
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->uperName:Ljava/lang/String;

    .line 419
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 424
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    sget-object v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 413
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v5, 0x8

    const/4 v9, 0x0

    .line 430
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    instance-of v0, p1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    if-eqz v0, :cond_ea

    move-object v6, p1

    .line 432
    check-cast v6, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    .line 433
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 434
    instance-of v0, v7, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_f9

    move-object v0, v7

    .line 436
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 437
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "major"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "archive"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 438
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "module_author"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->C()Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "stat"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "play"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :try_start_6c
    const-string v1, "stat"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v3, "danmaku"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7b} :catch_eb

    move-result v1

    .line 446
    :goto_7c
    if-lez v1, :cond_ee

    .line 447
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    :goto_90
    const-string v1, "module_author"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "pub_time"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    const-string v0, "duration_text"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_f6

    :goto_b6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    const-string v0, "cover"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 458
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    const-string v3, "cover"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 495
    :cond_da
    :goto_da
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 496
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 498
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 501
    :cond_ea
    return-void

    .line 445
    :catch_eb
    move-exception v1

    move v1, v9

    goto :goto_7c

    .line 450
    :cond_ee
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_90

    .line 456
    :cond_f6
    const-string v0, ""

    goto :goto_b6

    .line 460
    :cond_f9
    instance-of v0, v7, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v0, :cond_da

    move-object v8, v7

    .line 462
    check-cast v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 463
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->A()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->C()Landroid/widget/TextView;

    move-result-object v0

    iget v1, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :try_start_11d
    iget-object v0, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_122} :catch_1ab

    move-result v0

    .line 470
    :goto_123
    if-lez v0, :cond_1af

    .line 471
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    :goto_137
    iget-object v0, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v0, :cond_1b7

    iget-object v0, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 477
    :goto_141
    cmp-long v2, v0, v2

    if-lez v2, :cond_1b9

    .line 478
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v10

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 478
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    :goto_160
    iget v0, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 486
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_1c1

    .line 487
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, v0, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit16 v4, v0, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :goto_190
    iget-object v0, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v0, :cond_da

    .line 492
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    iget-object v2, v8, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-static {v1, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_da

    .line 469
    :catch_1ab
    move-exception v0

    move v0, v9

    goto/16 :goto_123

    .line 474
    :cond_1af
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->F()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_137

    :cond_1b7
    move-wide v0, v2

    .line 476
    goto :goto_141

    .line 483
    :cond_1b9
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_160

    .line 489
    :cond_1c1
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    new-array v3, v12, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_190
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 511
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->d(I)V

    .line 513
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 519
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->d(I)V

    .line 520
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 524
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 527
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 529
    if-nez v1, :cond_19

    .line 543
    :cond_18
    :goto_18
    return-void

    .line 532
    :cond_19
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_41

    .line 534
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 535
    const-string v2, "module_dynamic"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "major"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "archive"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "aid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 536
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 537
    :cond_41
    instance-of v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v2, :cond_18

    .line 539
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 540
    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 541
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 547
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 548
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 550
    :cond_9
    return-void
.end method
