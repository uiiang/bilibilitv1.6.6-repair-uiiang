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
    .line 403
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    .line 404
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->uperName:Ljava/lang/String;

    .line 405
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 410
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
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
    .line 399
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 416
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    instance-of v0, p1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    if-eqz v0, :cond_b4

    move-object v0, p1

    .line 418
    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;

    .line 419
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 420
    instance-of v1, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_b8

    move-object v1, v2

    .line 422
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 423
    const-string v3, "module_dynamic"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "major"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "archive"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 424
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->A()Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "module_author"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v5, "name"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->C()Landroid/widget/TextView;

    move-result-object v1

    const-string v4, "stat"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string v5, "play"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    const-string v4, "stat"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string v5, "danmaku"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const-string v1, "duration_text"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v1, :cond_b5

    :goto_80
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const-string v1, "cover"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 431
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    const-string v5, "cover"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 456
    :cond_a4
    :goto_a4
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 457
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 459
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 462
    :cond_b4
    return-void

    .line 429
    :cond_b5
    const-string v1, ""

    goto :goto_80

    .line 433
    :cond_b8
    instance-of v1, v2, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v1, :cond_a4

    move-object v1, v2

    .line 435
    check-cast v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 436
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->A()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v3, :cond_15f

    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_15f

    .line 439
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 440
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-object v6, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :goto_fa
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->C()Landroid/widget/TextView;

    move-result-object v3

    iget v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v4}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->D()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-static {v4}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 447
    const/16 v4, 0xe10

    if-lt v3, v4, :cond_169

    .line 448
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    div-int/lit16 v7, v3, 0xe10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    rem-int/lit16 v7, v3, 0xe10

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :goto_144
    iget-object v3, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v3, :cond_a4

    .line 453
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v3

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v4

    iget-object v1, v1, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-static {v4, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_a4

    .line 442
    :cond_15f
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->B()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_fa

    .line 450
    :cond_169
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$d;->E()Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v12, [Ljava/lang/Object;

    div-int/lit8 v7, v3, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_144
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
    .line 470
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 472
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->d(I)V

    .line 474
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
    .line 477
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment$c;->d(I)V

    .line 481
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 485
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 488
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 490
    if-nez v1, :cond_19

    .line 504
    :cond_18
    :goto_18
    return-void

    .line 493
    :cond_19
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_41

    .line 495
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 496
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

    .line 497
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 498
    :cond_41
    instance-of v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v2, :cond_18

    .line 500
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 501
    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 502
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 508
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 509
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 511
    :cond_9
    return-void
.end method
