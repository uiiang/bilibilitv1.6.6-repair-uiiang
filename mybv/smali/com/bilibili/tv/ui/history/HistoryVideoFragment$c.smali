.class final Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "HistoryVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/history/HistoryVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
.field private historyType:Ljava/lang/String;

.field private videos:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 419
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    .line 420
    const-string v0, "archive"

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatDuration(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    const/16 v0, 0xe10

    if-lt p1, v0, :cond_2b

    .line 630
    const-string v0, "%d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit16 v2, p1, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    rem-int/lit16 v2, p1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    rem-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_2a
    return-object v0

    :cond_2b
    const-string v0, "%02d:%02d"

    new-array v1, v5, [Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    rem-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a
.end method

.method private formatViewDate(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 614
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 615
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 616
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 618
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 619
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 621
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 622
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 624
    :goto_31
    return-object v0

    :cond_32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;
    .locals 1

    .prologue
    .line 428
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->Companion:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 418
    check-cast p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;I)V

    return-void
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    .prologue
    .line 535
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 537
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 538
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d()V

    .line 539
    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;I)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 434
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 437
    if-nez v0, :cond_11

    .line 527
    :goto_10
    return-void

    .line 439
    :cond_11
    const-string v1, "cover"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 441
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/ach;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 444
    :cond_30
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 446
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_43
    const-string v1, "show_title"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string v2, "tag_name"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_73

    .line 452
    const-string v3, "live"

    iget-object v4, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 453
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ec

    .line 454
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    :cond_73
    :goto_73
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 472
    const-string v2, "progress"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 473
    const-string v3, "badge"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_a9

    .line 475
    const-string v4, "live"

    iget-object v5, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 476
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_123

    .line 477
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    :cond_a9
    :goto_a9
    const-string v1, "view_at"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 500
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_ca

    .line 501
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->formatViewDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    :cond_ca
    iget-object v1, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 506
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 507
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c$1;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_10

    .line 457
    :cond_ec
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_73

    .line 460
    :cond_f4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_112

    .line 461
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 462
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_73

    .line 465
    :cond_112
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 466
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_73

    .line 480
    :cond_123
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a9

    .line 483
    :cond_12c
    const/4 v3, -0x1

    if-ne v2, v3, :cond_141

    .line 484
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u5df2\u770b\u5b8c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a9

    .line 487
    :cond_141
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    if-lez v2, :cond_172

    .line 489
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_169
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a9

    .line 492
    :cond_172
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_169
.end method

.method public final b(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 542
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 544
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 545
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d(I)V

    .line 546
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 550
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d()V

    .line 551
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 574
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 576
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_22

    .line 577
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 578
    const-string v1, "history"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 579
    if-eqz v1, :cond_22

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 581
    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 582
    if-nez v3, :cond_23

    .line 607
    :cond_22
    :goto_22
    return-void

    .line 584
    :cond_23
    const-string v4, "live"

    iget-object v5, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 585
    const-string v4, "live_status"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 586
    const/4 v5, 0x1

    if-ne v4, v5, :cond_7a

    .line 587
    new-instance v2, Lmybl/BiliLiveContent;

    invoke-direct {v2}, Lmybl/BiliLiveContent;-><init>()V

    .line 588
    const-string v4, "cover"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 589
    const-string v4, "title"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    .line 590
    const-string v4, "mid"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lmybl/BiliLiveContent;->mUid:J

    .line 591
    const-string v4, "author_name"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    .line 592
    const-string v0, "oid"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v2, Lmybl/BiliLiveContent;->mRoomId:I

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 595
    sget-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    sput v6, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 597
    invoke-static {v3, v2}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    .line 599
    :cond_7a
    const-string v0, "\u672a\u5f00\u64ad"

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    .line 602
    :cond_84
    const-string v0, "oid"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 603
    sget-object v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v4, v2, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22
.end method

.method public final remove(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 6

    .prologue
    .line 554
    if-nez p1, :cond_3

    .line 564
    :cond_2
    :goto_2
    return-void

    .line 555
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 557
    const-string v2, "history"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 558
    if-eqz v1, :cond_2f

    const-string v2, "oid"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2f

    .line 559
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    .line 560
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->c(I)V

    goto :goto_2

    .line 555
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public final removeByPosition(I)V
    .locals 1

    .prologue
    .line 567
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 570
    :cond_a
    :goto_a
    return-void

    .line 568
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    .line 569
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d()V

    goto :goto_a
.end method

.method public setHistoryType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    .line 424
    return-void
.end method
