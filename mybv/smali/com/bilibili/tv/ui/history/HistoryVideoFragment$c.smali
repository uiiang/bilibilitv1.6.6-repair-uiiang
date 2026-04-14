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
    .line 437
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 438
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    .line 439
    const-string v0, "archive"

    iput-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 654
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

    .line 673
    const/16 v0, 0xe10

    if-lt p1, v0, :cond_2b

    .line 674
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

    .line 676
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

    .line 658
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 659
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 660
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 662
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 663
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 665
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 666
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 668
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
    .line 566
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;
    .locals 1

    .prologue
    .line 447
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->Companion:Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 437
    check-cast p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->a(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;I)V

    return-void
.end method

.method public final a(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    .prologue
    .line 570
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 572
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 573
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d()V

    .line 574
    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;I)V
    .locals 10

    .prologue
    const v9, 0x7f060120

    const/4 v8, 0x3

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 453
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 456
    if-nez v0, :cond_16

    .line 562
    :goto_15
    return-void

    .line 458
    :cond_16
    const-string v1, "cover"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 460
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 463
    :cond_35
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 465
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_48
    const-string v1, "show_title"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    const-string v2, "author_name"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    const-string v3, "tag_name"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 472
    const-string v3, "live"

    iget-object v4, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 473
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 474
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 476
    invoke-static {v9}, Lbl/adl;->b(I)I

    move-result v2

    .line 477
    if-eqz v1, :cond_88

    .line 478
    invoke-virtual {v1, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 480
    :cond_88
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 481
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    :cond_96
    :goto_96
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 511
    const-string v2, "progress"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 512
    const-string v3, "badge"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_cc

    .line 514
    const-string v4, "live"

    iget-object v5, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 515
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_186

    .line 516
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    :cond_cc
    :goto_cc
    const-string v1, "view_at"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 535
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_ed

    .line 536
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->formatViewDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    :cond_ed
    iget-object v1, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 541
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 542
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, p1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c$1;-><init>(Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_15

    .line 483
    :cond_10f
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_96

    .line 486
    :cond_117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13b

    .line 487
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 488
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 490
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_96

    .line 492
    :cond_13b
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->A()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 493
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17d

    .line 494
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 496
    invoke-static {v9}, Lbl/adl;->b(I)I

    move-result v2

    .line 497
    if-eqz v1, :cond_16d

    .line 498
    invoke-virtual {v1, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 499
    const v2, 0x7f0500a7

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 501
    :cond_16d
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 502
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_96

    .line 504
    :cond_17d
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->B()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_96

    .line 519
    :cond_186
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cc

    .line 522
    :cond_18f
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a4

    .line 523
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u5df2\u770b\u5b8c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cc

    .line 526
    :cond_1a4
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    .line 528
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

    .line 529
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$h;->C()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cc
.end method

.method public final b(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2

    .prologue
    .line 577
    const-string v0, "list"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 579
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 580
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d(I)V

    .line 581
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 585
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d()V

    .line 586
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 609
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 611
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_22

    .line 612
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 613
    const-string v1, "history"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_22

    .line 615
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 616
    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 617
    if-nez v3, :cond_23

    .line 651
    :cond_22
    :goto_22
    return-void

    .line 619
    :cond_23
    const-string v4, "live"

    iget-object v5, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 620
    const-string v4, "live_status"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 621
    const/4 v5, 0x1

    if-ne v4, v5, :cond_7a

    .line 622
    new-instance v2, Lmybl/BiliLiveContent;

    invoke-direct {v2}, Lmybl/BiliLiveContent;-><init>()V

    .line 623
    const-string v4, "cover"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 624
    const-string v4, "title"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    .line 625
    const-string v4, "mid"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lmybl/BiliLiveContent;->mUid:J

    .line 626
    const-string v4, "author_name"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    .line 627
    const-string v0, "oid"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v2, Lmybl/BiliLiveContent;->mRoomId:I

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 630
    sget-object v0, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    sput v6, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 632
    invoke-static {v3, v2}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    .line 634
    :cond_7a
    const-string v0, "\u672a\u5f00\u64ad"

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_22

    .line 637
    :cond_84
    const-string v4, "business"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 638
    const-string v5, "cover"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 639
    const-string v6, "pgc"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 640
    const-string v1, "kid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 641
    const-string v4, "HistoryVideoFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PGC video: seasonId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cover="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-object v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_22

    .line 644
    :cond_cf
    const-string v0, "oid"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 645
    const-string v4, "HistoryVideoFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UGC video: avid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cover="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    sget-object v4, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v4, v2, v0, v1, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_22
.end method

.method public final remove(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 6

    .prologue
    .line 589
    if-nez p1, :cond_3

    .line 599
    :cond_2
    :goto_2
    return-void

    .line 590
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 591
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 592
    const-string v2, "history"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 593
    if-eqz v1, :cond_2f

    const-string v2, "oid"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2f

    .line 594
    iget-object v1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    .line 595
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->c(I)V

    goto :goto_2

    .line 590
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public final removeByPosition(I)V
    .locals 1

    .prologue
    .line 602
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 605
    :cond_a
    :goto_a
    return-void

    .line 603
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->videos:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    .line 604
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->d()V

    goto :goto_a
.end method

.method public setHistoryType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/bilibili/tv/ui/history/HistoryVideoFragment$c;->historyType:Ljava/lang/String;

    .line 443
    return-void
.end method
