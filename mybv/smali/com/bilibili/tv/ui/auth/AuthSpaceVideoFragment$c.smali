.class final Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "AuthSpaceVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;
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
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 652
    sget-object v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->Companion:Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 647
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 10

    .prologue
    .line 657
    instance-of v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    if-eqz v0, :cond_16c

    .line 658
    check-cast p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;

    .line 659
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 660
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1c3

    .line 661
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 663
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_30b

    .line 664
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "major"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "archive"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 666
    :goto_2c
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    const-string v2, "pubdate"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 668
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_16d

    .line 669
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy\u5e74MM\u6708dd\u65e5"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 670
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    :goto_61
    const-string v2, "stat"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_187

    const-string v2, "stat"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "view"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    :goto_75
    const-string v3, "stat"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_18f

    const-string v3, "stat"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "danmaku"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 678
    :goto_89
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v2}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v3}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 681
    const/16 v3, 0xe10

    if-lt v2, v3, :cond_197

    .line 682
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-int/lit16 v7, v2, 0xe10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-int/lit16 v7, v2, 0xe10

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :goto_d6
    const v2, 0x7f060179

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 687
    sget-object v3, Lbl/adl;->a:Lbl/adl;

    const v4, 0x7f0700b1

    invoke-virtual {v3, v4}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 688
    sget-object v4, Lbl/adl;->a:Lbl/adl;

    const v5, 0x7f0700b0

    invoke-virtual {v4, v5}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 689
    if-eqz v3, :cond_102

    .line 690
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 691
    const v5, 0x7f0500a7

    invoke-static {v5}, Lbl/adl;->d(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 693
    :cond_102
    if-eqz v4, :cond_115

    .line 694
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 695
    const v2, 0x7f0500a7

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 697
    :cond_115
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 698
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 699
    const-string v2, "pic"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1bb

    const-string v2, "pic"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    :goto_137
    if-eqz v1, :cond_14c

    .line 701
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 702
    :cond_14c
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 748
    :cond_151
    :goto_151
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 750
    iget-object v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 751
    instance-of v1, v0, Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_16c

    .line 752
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 755
    :cond_16c
    return-void

    .line 672
    :cond_16d
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v3

    const-string v2, "author"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_180

    const-string v2, ""

    :goto_17b
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_61

    :cond_180
    const-string v2, "author"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17b

    .line 674
    :cond_187
    const-string v2, "play"

    .line 675
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_75

    .line 676
    :cond_18f
    const-string v3, "danmaku"

    .line 677
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_89

    .line 684
    :cond_197
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-int/lit8 v7, v2, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d6

    .line 699
    :cond_1bb
    const-string v2, "cover"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_137

    .line 703
    :cond_1c3
    instance-of v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v1, :cond_151

    .line 704
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 705
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->A()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    if-eqz v1, :cond_2d4

    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2d4

    .line 708
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 709
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->ctime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :goto_204
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    if-nez v1, :cond_2df

    const-string v1, "0"

    .line 715
    :goto_20a
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    const-string v1, "0"

    .line 718
    iget-object v2, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    if-eqz v2, :cond_227

    const-string v2, "0"

    iget-object v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_227

    .line 719
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->danmaku:Ljava/lang/String;

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    :cond_227
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->duration:I

    .line 724
    const/16 v2, 0xe10

    if-lt v1, v2, :cond_2e7

    .line 725
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-int/lit16 v6, v1, 0xe10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    rem-int/lit16 v6, v1, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    :goto_261
    const v1, 0x7f060179

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 731
    sget-object v2, Lbl/adl;->a:Lbl/adl;

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 732
    sget-object v3, Lbl/adl;->a:Lbl/adl;

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 733
    if-eqz v2, :cond_28d

    .line 734
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 735
    const v4, 0x7f0500a7

    invoke-static {v4}, Lbl/adl;->d(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 737
    :cond_28d
    if-eqz v3, :cond_2a0

    .line 738
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 739
    const v1, 0x7f0500a7

    invoke-static {v1}, Lbl/adl;->d(I)I

    move-result v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 741
    :cond_2a0
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->C()Landroid/widget/TextView;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 742
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->D()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 744
    iget-object v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    if-eqz v1, :cond_2cd

    .line 745
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v1

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->cover:Ljava/lang/String;

    invoke-static {v2, v3}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->z()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 746
    :cond_2cd
    iget-object v1, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_151

    .line 711
    :cond_2d4
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->B()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_204

    .line 714
    :cond_2df
    iget v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->play:I

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_20a

    .line 727
    :cond_2e7
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$d;->E()Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-int/lit8 v6, v1, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_261

    :cond_30b
    move-object v1, v0

    goto/16 :goto_2c
.end method

.method public addJsonItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 782
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 783
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d(I)V

    .line 784
    return-void
.end method

.method public addVideos(Ljava/util/List;)V
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
    .line 775
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 776
    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 777
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d(I)V

    .line 778
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 790
    if-nez v4, :cond_f

    .line 808
    :cond_e
    :goto_e
    return-void

    .line 792
    :cond_f
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3f

    .line 793
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 795
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 796
    const-string v1, "module_dynamic"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "major"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "archive"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 797
    :cond_2f
    const-string v1, "aid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 798
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v2, v4, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 799
    :cond_3f
    instance-of v1, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    if-eqz v1, :cond_e

    .line 800
    check-cast v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;

    .line 801
    const-wide/16 v2, 0x0

    .line 803
    :try_start_47
    iget-object v0, v0, Lcom/bilibili/tv/api/auth/BiliSpaceVideo;->param:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_57

    move-result-wide v0

    .line 806
    :goto_4d
    sget-object v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v2, v4, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 804
    :catch_57
    move-exception v0

    move-wide v0, v2

    goto :goto_4d
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 812
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_9

    .line 813
    check-cast p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 814
    :cond_9
    return-void
.end method

.method public setJsonItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 770
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 771
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d()V

    .line 772
    return-void
.end method

.method public setVideos(Ljava/util/List;)V
    .locals 1
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
    .line 763
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 764
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 765
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment$c;->d()V

    .line 766
    return-void
.end method
