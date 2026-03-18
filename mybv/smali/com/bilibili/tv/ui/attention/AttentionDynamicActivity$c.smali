.class public final Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;
.super Lbl/adz;
.source "AttentionDynamicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 437
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;

    sget-object v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->Companion:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 426
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x3e8

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 443
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    instance-of v0, p1, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;

    if-eqz v0, :cond_a2

    move-object v6, p1

    .line 445
    check-cast v6, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;

    .line 446
    sget-boolean v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->uperMode:Z

    if-eqz v0, :cond_a3

    .line 447
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 448
    const-string v1, "mFollowings[position]"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->A()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "uname"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    const-string v1, "official_verify"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v1, "sign"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    :cond_47
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v1, "\u8fd9\u4e2a\u4eba\u6ca1\u6709\u586b\u7b80\u4ecb\u554a~~~ "

    .line 453
    :cond_4f
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->B()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 455
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->B()Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 458
    const-string v1, "face"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 459
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    const-string v3, "face"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 497
    :cond_88
    :goto_88
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 498
    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 500
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 504
    :cond_a2
    return-void

    .line 471
    :cond_a3
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 472
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "major"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "archive"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 473
    const-string v1, "mBiliVideos[position]"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->A()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->B()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "module_author"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->C()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "stat"

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "play"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const-string v0, "stat"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "danmaku"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 478
    if-lez v0, :cond_15b

    .line 479
    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    :goto_115
    const-string v0, "pubdate"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 485
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_163

    .line 486
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->D()Landroid/widget/TextView;

    move-result-object v8

    mul-long/2addr v0, v4

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 486
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :goto_138
    const-string v0, "cover"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 494
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    const-string v2, "cover"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_88

    .line 482
    :cond_15b
    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->danmakuInImage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->access$1000(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_115

    .line 491
    :cond_163
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$d;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_138
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
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
    .line 512
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 516
    iget-object v4, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 517
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 520
    :cond_2e
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 521
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->d(I)V

    .line 522
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 526
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 528
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 529
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 532
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_4c

    sget-boolean v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->uperMode:Z

    if-nez v1, :cond_4c

    if-eqz v2, :cond_4c

    .line 534
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "major"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "archive"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "aid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 535
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 539
    :cond_4b
    :goto_4b
    return-void

    .line 536
    :cond_4c
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_4b

    if-eqz v2, :cond_4b

    .line 537
    sget-object v3, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity;->Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;

    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "uname"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "mid"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceActivity$a;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_4b
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 543
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 544
    if-eqz v0, :cond_11

    .line 545
    if-eqz p2, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 548
    :cond_11
    :goto_11
    return-void

    .line 546
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_11
.end method
